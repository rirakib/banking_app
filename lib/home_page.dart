import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    Key ? key
  }): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {
  // TextEditingController titleController = TextEditingController();
  TextEditingController depositemoneyController = TextEditingController();
  TextEditingController depositeDateController = TextEditingController();
  TextEditingController depositeRemarksController = TextEditingController();

  TextEditingController widthdrawmoneyController = TextEditingController();
  TextEditingController widthdrawDateController = TextEditingController();
  TextEditingController widthdrawRemarksController = TextEditingController();

  int defaultBlance = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Column(

              children: [

                Container(
                  alignment: Alignment.center,
                  child: Text('Your Current Balence', style: TextStyle(
                    fontSize: 40
                  ), ),
                ),

                SizedBox(height: 20, ),
                Container(
                  alignment: Alignment.center,
                  child: Text('$defaultBlance Tk.', style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal
                  ), ),
                ),

                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      // ------------------   DEPOSIT START HERE 
                      TextButton(onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('Deposite Your Money'),
                              content: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: depositemoneyController,
                                      // inputFormatters: [
                                      //   FilteringTextInputFormatter.digitsOnly
                                      // ],
                                      decoration: const InputDecoration(
                                        hintText: 'The amount of money',
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                    SizedBox(height: 10, ),
                                    TextField(
                                      controller: depositeDateController,
                                      decoration: InputDecoration(
                                        hintText: 'Deposite Date',
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                    SizedBox(height: 10, ),
                                    TextField(
                                      controller: depositeRemarksController,
                                      decoration: InputDecoration(
                                        hintText: 'Remarks',
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                    SizedBox(height: 10, ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(onPressed: () {
                                            depositemoneyController.clear();
                                            depositeDateController.clear();
                                            depositeRemarksController.clear();
                                            Navigator.pop(context);
                                          }, child: Text('Clear'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            backgroundColor: Colors.red,
                                            onSurface: Colors.grey,
                                          ),
                                        ),
                                        TextButton(onPressed: () {
                                            
                                            

                                            defaultBlance = defaultBlance + int.parse(depositemoneyController.text);


                                            setState(() {

                                            });
                                            depositemoneyController.clear();
                                            depositeDateController.clear();
                                            depositeRemarksController.clear();
                                            Navigator.pop(context);



                                          }, child: Text('Deposite'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            backgroundColor: Colors.teal,
                                            onSurface: Colors.grey,
                                          ),
                                        )
                                      ],
                                    )


                                  ],
                                ),
                              ),
                            );
                          });
                        }, child: Text('Deposite'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                          onSurface: Colors.grey,
                        ),
                      ),

                      TextButton(onPressed: () {

                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('Widthraw Your Money'),
                              content: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // --------------DEPOSITE END BOX HERE----------------------------------------




                                    TextField(
                                      controller: widthdrawmoneyController,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: InputDecoration(

                                        hintText: 'The amount of Widtraw',
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                    SizedBox(height: 10, ),
                                    TextField(
                                      controller: widthdrawDateController,
                                      decoration: InputDecoration(
                                        hintText: 'Widtraw Date',
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                    SizedBox(height: 10, ),
                                    TextField(
                                      controller: widthdrawRemarksController,
                                      decoration: InputDecoration(
                                        hintText: 'Remarks',
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                    SizedBox(height: 10, ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(onPressed: () {

                                          }, child: Text('Clear'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            backgroundColor: Colors.red,
                                            onSurface: Colors.grey,
                                          ),
                                        ),
                                        TextButton(onPressed: () {

                                            
                                            
                                            
                                            int a = int.parse(widthdrawmoneyController.text);
                                            
                                            defaultBlance = defaultBlance - a;
                                            setState(() {

                                            });
                                            widthdrawmoneyController.clear();
                                            widthdrawDateController.clear();
                                            widthdrawRemarksController.clear();
                                            Navigator.pop(context);

                                          }, child: Text('Widthraw'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            backgroundColor: Colors.teal,
                                            onSurface: Colors.grey,
                                          ),
                                        )
                                      ],
                                    )


                                  ],
                                ),
                              ),
                            );
                          });

                        }, child: Text('Witdraw'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.red,
                          onSurface: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30, ),
                Container(
                  child: Text('Your Transiction History', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ), ),
                ),
                SizedBox(height: 20, ),


                Container(
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: ListTile(
                          leading: Text('500TK', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ), ),
                          title: Text('Deposite'),
                          subtitle: Text('Date: 27/02/21'),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          

          Expanded(child: Container(
            width: 200,
            height: 500,
            child: CustomScrollView(
              slivers: [
                SliverFixedExtentList(delegate: SliverChildListDelegate([
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),


                ]), itemExtent: 1),
              ],
            ),
          ), )
        ],
      ),
    );
  }
}