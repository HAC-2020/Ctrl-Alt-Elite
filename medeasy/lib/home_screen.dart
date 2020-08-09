import 'package:HAC/maps.dart';
import 'package:HAC/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:HAC/productCard.dart';
import 'package:HAC/SizeConfig.dart';
import 'package:HAC/paracetamol.dart';
import 'package:HAC/categories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

_SearchAppBarDelegate _searchDelegate;

class _HomePageState extends State<HomePage> {
  final List<String> kWords;

  //Initializing with sorted list of english words
  _HomePageState()
      : kWords = [
          'Paracetamol',
          'Charak Pharma',
          'Nutrainix Vit C',
          'Fast&Up Vit C'
        ]..sort(
            (w1, w2) => w1.toLowerCase().compareTo(w2.toLowerCase()),
          ),
        super();

  @override
  void initState() {
    super.initState();
    //Initializing search delegate with sorted list of English words
    _searchDelegate = _SearchAppBarDelegate(kWords);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1125, height: 2436, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage('assets/virus2.jpeg'),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.5), BlendMode.srcOver)),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Image.asset("assets/virus.jpeg"),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(40),
                        right: ScreenUtil().setHeight(40),
                        left: ScreenUtil().setHeight(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //IconButton(icon: Icon(Icons.menu), onPressed: null),
                        /*Image.asset(
                          'assets/cart.png',
                          width: ScreenUtil().setWidth(260),
                          height: ScreenUtil().setHeight(260),
                        )*/
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(60),
                        right: ScreenUtil().setHeight(70),
                        left: ScreenUtil().setHeight(505)),
                    child: Text(
                      "Explore",
                      style: TextStyle(
                          fontSize: 30,
                          //fontFamily: 'bold',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  //Categorylist(),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Search',
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.blue,
                          onPressed: () {
                            showSearchPage(context, _searchDelegate);
                          },
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          color: Colors.blue,
                          onPressed: () {
                            showSearchPage(context, _searchDelegate);
                          },
                        ),
                        hintText: 'Order Medicines from Nearby Shops',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Categorylist(),
            SizedBox(
              height: ScreenUtil().setHeight(1050),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  //Shoes shoes = products[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(30),
                    ),
                    child: ProductCard(index),
                  );
                },
              ),
            ),
            SizedBox(
              height:30,
            ),
            
              GradientButton(
              width: 290,
              height: 45,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Map()));
              },
              text: Text(
                'Nearby Pharmacy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
                
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/discount1.jpg"),
                    ),
                  ),
                ),
              ],
            ),
        ),
      );
    
  }

//The Search Mechanism

  void showSearchPage(
      BuildContext context, _SearchAppBarDelegate searchDelegate) async {
    final String selected = await showSearch<String>(
      context: context,
      delegate: searchDelegate,
    );

    if (selected != null) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Your Word Choice: $selected'),
        ),
      );
    }
  }
}

//Search delegate
class _SearchAppBarDelegate extends SearchDelegate<String> {
  final List<String> _words;
  final List<String> _history;

  _SearchAppBarDelegate(List<String> words)
      : _words = words,
        //pre-populated history of words
        _history = <String>['Paracetamol', 'Charak Pharma'],
        super();

  // Setting leading icon for the search bar.
  //Clicking on back arrow will take control to main page
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        //Take control back to previous page
        this.close(context, null);
      },
    );
  }

  // Builds page to populate search results.
  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('===Your Word Choice==='),
            GestureDetector(
              /*onTap: () {
                //Define your action when clicking on result item.
                //In this example, it simply closes the page
                // this.close(context, this.query);
              },*/
              onTap: () {
                Navigator.push(context, SizeRoute(page: Med1()));
              },
              child: Text(
                this.query,
                style: Theme.of(context)
                    .textTheme
                    .display2
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Suggestions list while typing search query - this.query.
  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = this.query.isEmpty
        ? _history
        : _words.where((word) => word.startsWith(query));

    return _WordSuggestionList(
      query: this.query,
      suggestions: suggestions.toList(),
      onSelected: (String suggestion) {
        this.query = suggestion;
        this._history.insert(0, suggestion);
        showResults(context);
      },
    );
  }

  // Action buttons at the right of search bar.
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      query.isNotEmpty
          ? IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            )
          : IconButton(
              icon: const Icon(Icons.mic),
              tooltip: 'Voice input',
              onPressed: () {
                this.query = 'TBW: Get input from voice';
              },
            ),
    ];
  }
}

// Suggestions list widget displayed in the search page.
class _WordSuggestionList extends StatelessWidget {
  const _WordSuggestionList({this.suggestions, this.query, this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = suggestions[i];
        return ListTile(
          leading: query.isEmpty ? Icon(Icons.history) : Icon(null),
          // Highlight the substring that matched the query.
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query.length),
              style: textTheme.copyWith(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query.length),
                  style: textTheme,
                ),
              ],
            ),
          ),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}

class SizeRoute extends PageRouteBuilder {
  final Widget page;
  SizeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Align(
            child: SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
          ),
        );
}
