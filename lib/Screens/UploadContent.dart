import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadContent extends StatefulWidget {
  const UploadContent({Key? key}) : super(key: key);

  @override
  State<UploadContent> createState() => _UploadContentState();
}

class _UploadContentState extends State<UploadContent> {
  final _formKey = GlobalKey<FormState>();


  final Map<String, dynamic> _userData = {};

  late String _newUsername,
      _phoneNumber,
      _companyName,
      _category,
      _currentPassword = '',
      _newPassword = '';

  final List<String> _address = List.generate(5, (index) => '');

  late bool _somethingChanged;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.grey[200] ,
      body:Container(
        child: Padding(
          padding: const EdgeInsets.only(left:80.0,right:80,top:50),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: width*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:10,left:10),
                    child: Container(
                      child:const Text("Upload Content to a Project",style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: 30),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:20,left:10),
                    child: Container(
                      child:const Text("A Project is a collection of photos and videos of your own work or products. Projects are usually best organized by client, job site, or product line.",
                      style: TextStyle(color: Colors.grey,decoration: TextDecoration.none,fontSize: 12),),
                    ),
                  ),
                  Container(
                    height:height*0.7,
                    width:width*0.8,
                    child: Row(children: [
                      Column(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(height*0.01),
                                  child: Container(
                                    width: width * 0.4,
                                    height: height * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 20),
                                            child: Form(
                                              key: _formKey,
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    
                                                    const SizedBox(height: 14),
                                                    const Text("New project Name",
                                                        style: TextStyle(fontSize: 10)),
                                                    const SizedBox(height: 14),
                                                    SizedBox(
                                                      height: 35,
                                                      child: TextFormField(
                                                        onChanged: (value) =>
                                                            _companyName = value,
                                                        decoration: const InputDecoration(
                                                          border: OutlineInputBorder(),
                                                          labelText: 'Type project name',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 14),
                                                    const Text("Project address",
                                                        style: TextStyle(fontSize: 10)),
                                                    const SizedBox(height: 14),
                                                    SizedBox(
                                                      height: 35,
                                                      child: TextFormField(
                                                        onChanged: (value) => _category = value,
                                                        decoration: const InputDecoration(
                                                          border: OutlineInputBorder(),
                                                          labelText: 'Enter a project address',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 14),
                                                    
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              const Padding(
                                                                 padding: EdgeInsets.only(bottom:8.0),
                                                                child: Text("Project Year",style: TextStyle(fontSize: 10)),
                                                              ),
                                                              SizedBox(
                                                                height: 35,
                                                                width: width * 0.15,
                                                                child: TextFormField(
                                                                  decoration: const InputDecoration(
                                                                    border: OutlineInputBorder(),
                                                                    labelText: 'year',
                                                                  ),
                                                                  onChanged: (value) =>
                                                                      _address[1] = value.trim(),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets.only(bottom:8.0),
                                                                child: Text("Project cost",style: TextStyle(fontSize: 10)),
                                                              ),
                                                              SizedBox(
                                                                height: 35,
                                                                width: width * 0.15,
                                                                child: TextFormField(
                                                                  decoration: const InputDecoration(
                                                                    border: OutlineInputBorder(),
                                                                    labelText: 'select a cost range',
                                                                  ),
                                                                  onChanged: (value) =>
                                                                      _address[2] = value.trim(),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ]),
                                                    const SizedBox(height: 14),
                                                  ]),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(height*0.01),
                            child: Container(
                                width: width * 0.4,
                                height: height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:20.0,top:10,bottom:10),
                                    child: Align(alignment: Alignment.centerLeft,
                                      child: Text("Category")),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height:20,width:60,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(255, 246, 6, 86)),
                                      child:const Text("Residential",style:TextStyle(fontSize: 10,color:Colors.white),textAlign: TextAlign.center),
                                      ),
                                      Container(
                                      alignment: Alignment.center,
                                      height:20,width:60,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                                      child:const Text("Commercial",style:TextStyle(fontSize: 10),textAlign: TextAlign.center),
                                      ),
                                      Container(
                                      alignment: Alignment.center,
                                      height:20,width:60,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                                      child:const Text("Hospitality",style:TextStyle(fontSize: 10),textAlign: TextAlign.center),
                                      ),
                                      Container(
                                      alignment: Alignment.center,
                                      height:20,
                                      width:60,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                                      child:const Text("Trunkey",style:TextStyle(fontSize: 10,),textAlign: TextAlign.center),
                                      ),
                                      Container(
                                      alignment: Alignment.center,
                                      height:20,width:60,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                                      child:const Text("Other",style:TextStyle(fontSize: 10),textAlign: TextAlign.center),
                                      ),
                                      
                                  ],),
                                  const Padding(
                                    padding: EdgeInsets.only(top:10.0,left:20),
                                    child: Text("Get noticed on other profiles by crediting other pros on this project",textAlign: TextAlign.start, style:TextStyle(color: Colors.black,fontSize: 10)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left:20.0),
                                    child: Text("(i.e. Architect, Interior Designer, Photographer, Plumber, Electrician, etc)",textAlign: TextAlign.start,style:TextStyle(color: Colors.grey,fontSize: 10)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                     child: Row(
                                      children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: width*0.25,
                                          height:height*0.05,
                                          child: const TextField(
                                            decoration: InputDecoration(
                                                              border: OutlineInputBorder(),
                                          )),  ),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                          width: width*0.06,
                                          height:height*0.05,
                                          child: const TextField(
                                            decoration: InputDecoration(labelText: "Add",
                                                              border: OutlineInputBorder(),
                                          )),  ),
                                        )
                                      ],)
                                    ),
                                  )

                                ],)
                              ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(height*0.01),
                        child: Container(
                                width: width * 0.35,
                                height: height * 0.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left:30.0,bottom:10,top:10),
                                      child: Text("Select content"),
                                    )),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1,color:Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,),
                                    width: width * 0.25,
                                height: height * 0.25,
                                child:Padding(
                                  padding: EdgeInsets.all(height*0.01),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                    Icon(Icons.image_outlined,color:Colors.grey,size: 30, ),
                                    Text("Upload a image",style:TextStyle(color: Colors.grey)),
                                  ],),
                                )
                                ),
                                Padding(
                                  padding:  EdgeInsets.all(height*0.01),
                                  child: Container(
                                    width:width*0.3,
                                    child: const Text("By uploading photos, you are approving their display by Houzz, saying that you either own the rights to the image or that you have permission or a license to do so from the copyright holder, and agreeing to abide by Amar designer's terms of use."
                                    ,style: TextStyle(fontSize: 10,color: Colors.grey),textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                 Padding(
                              padding: const EdgeInsets.only(left: 70.0,right: 70,top:10),
                              child: Container(
                                height: height*0.04,
                                width: width*0.3,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 246, 6, 86)),
                                  onPressed: () async {
                                  },
                                  child:
                                  const Text('Upload', style: TextStyle(fontSize: 16,),textAlign: TextAlign.center),
                                ),
                              ),
                            ),
                                ],)
                              ),
                      ),
                    ],),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
