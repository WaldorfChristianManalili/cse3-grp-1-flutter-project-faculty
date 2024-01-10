import 'package:flutter/material.dart';
import 'class_assignment_widget.dart';

class TeachingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle columnTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    TextStyle dataTextStyle = TextStyle(
      fontSize: 12,
      color: Colors.black,
    );

    Widget tableTitleWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the header
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300), // Border color for the bottom
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'PAMANTASAN NG LUNGSOD NG MAYNILA',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'University of the City of Manila',
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'COLLEGE OF ENGINEERING',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.print),
                onPressed: () {
                  // Implement your print logic here
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'TEACHING ASSIGNMENTS',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '1st Sem S.Y 2023 - 2024',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

    return ListView(
      children: [
        // Main header "Current Class Assignment"
        Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Center(
            child: Text(
              'Current Teaching Assignment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            border: Border.all(color: Colors.grey.shade300), // Border color
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
          child: Column(
            children: [
              tableTitleWidget, // The custom table title widget
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowHeight: 48.0,
                  dataRowHeight: 48.0,
                  columns: <DataColumn>[
                    DataColumn(label: Text('Course Code & Section', style: columnTextStyle)),
                    DataColumn(label: Text('Course Title', style: columnTextStyle)),
                    DataColumn(label: Text('Units', style: columnTextStyle)),
                    DataColumn(label: Text('Class Schedule', style: columnTextStyle)),
                    DataColumn(label: Text('No. of Students', style: columnTextStyle)),
                    DataColumn(label: Text('Credited Units', style: columnTextStyle)),
                    DataColumn(label: Text('College', style: columnTextStyle)),
                    DataColumn(label: Text('Type of Load', style: columnTextStyle)),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('CSC 04131-1', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('36', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                        DataCell(Text('COE', style: dataTextStyle)),
                        DataCell(Text('Regular Load', style: dataTextStyle)), // The type of load is not provided in the image
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('CSC 04131-2', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(Text('T 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('39', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                        DataCell(Text('COE', style: dataTextStyle)),
                        DataCell(Text('Regular Load', style: dataTextStyle)), // The type of load is not provided in the image
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('CSC 04131-3', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(Text('W 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('41', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                        DataCell(Text('COE', style: dataTextStyle)),
                        DataCell(Text('Regular Load', style: dataTextStyle)), // The type of load is not provided in the image
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('CSC 04131-4', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(Text('Th 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('38', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                        DataCell(Text('COE', style: dataTextStyle)),
                        DataCell(Text('Regular Load', style: dataTextStyle)), // The type of load is not provided in the image
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('CSC 04131', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('2', style: dataTextStyle)),
                        DataCell(Text('F 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('37', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                        DataCell(Text('COE', style: dataTextStyle)),
                        DataCell(Text('Regular Load', style: dataTextStyle)), // The type of load is not provided in the image
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}