import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';
import 'package:islami/ui/home/hadeth/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) readHadethFile();
    return Column(
      children: [
        Expanded(
          child: Image.asset('assets/images/hadeth_header.png'),
          flex: 1,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).accentColor,
          margin: EdgeInsets.only(bottom: 4),
        ),
        Text(
          'Hadeth Number',
          style: TextStyle(fontSize: 24),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).accentColor,
          margin: EdgeInsets.only(top: 4),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: allHadethList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return HadethTitleWidget(allHadethList[index]);
                    },
                    itemCount: allHadethList.length,
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        color: Theme.of(context).accentColor,
                        width: double.infinity,
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> splittedContent = fileContent.split('#');
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
