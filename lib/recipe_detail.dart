import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // ignore: todo
  // TODO: Add _sliderVal here
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      //2
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: AssetImage(widget.recipe.imageUrl),
            ),
          ),
          //5
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),
          ),
          // ignore: todo
          //TODO Add Expanded
          Expanded(
              //8
              child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    // ignore: non_constant_identifier_names
                    final Ingredient = widget.recipe.ingredients[index];
                    //9
                    // ignore: todo
                    //TODO: Add ingredient.quantity
                    return Text(
                        '${Ingredient.quantity * _sliderVal} ${Ingredient.measure} ${Ingredient.name}');
                  })),
          // ignore: todo
          //TODO Add Slider() here
          Slider(
            //10
            min: 1,
            max: 10,
            divisions: 10,
            //11
            label: '${_sliderVal * widget.recipe.servings} servings',
            //12
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            //14
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          )
        ],
      )),
    );
  }
}
