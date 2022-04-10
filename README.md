# Percentify

Percentify is a Flutter package to show different indicators with percentage.You can customize these indicators as you want

## Types of indicators
- Rounded linear percent indicator
- Square linear percent indicator
- Rounded circular percent indicator
- Square circular percent indicator

## Features
- Customize percent indicators
- Add any child widget into indicators
- Use predefined indicators
- Create customized indicators from scratch
- Implementation is very easy

## Usage of the components
##### Rounded Circular Percentify 
```dart
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundedCircularPercentify(
          40, // the value of progress
          backgroundColor: Colors.black,
          valueColor: Colors.blueAccent,
          strokeWidth: 15,
          valueStrokeWidth: 25,
          child: const SizedBox(
            width: 200,
            height: 200,
            child: Center(
                child: Text(
              "${40}%",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
```
##### Rect Circular Percentify 
```dart
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RectCircularPercentify(
          22, // the value of progress
          backgroundColor: Colors.red,
          valueColor: Colors.blue,
          strokeWidth: 20,
          valueStrokeWidth: 35
        ),
      ),
    );
  }
```

##### Rounded Linear Percentify 
```dart
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundedLinearPercentify(
          22, // the value of progress
          backgroundColor: Colors.red,
          valueColor: Colors.blue,
          strokeWidth: 20,
          valueStrokeWidth: 35
        ),
      ),
    );
  }
```

##### Rect Linear Percentify 
```dart
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RectLinearPercentify(
          22, // the value of progress
          backgroundColor: Colors.red,
          valueColor: Colors.blue,
          strokeWidth: 20,
          valueStrokeWidth: 35
        ),
      ),
    );
  }
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Source Control
[GitHub](https://choosealicense.com/licenses/mit/)

## License
[MIT](https://choosealicense.com/licenses/mit/)