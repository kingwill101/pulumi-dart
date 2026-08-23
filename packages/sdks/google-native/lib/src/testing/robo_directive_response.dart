// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.
class RoboDirectiveResponse {
  /// The type of action that Robo should perform on the specified element.
  final pulumi.Input<String> actionType;
  /// The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
  final pulumi.Input<String> inputText;
  /// The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html
  final pulumi.Input<String> resourceName;

  /// Creates a new [RoboDirectiveResponse].
  /// [actionType] The type of action that Robo should perform on the specified element.
  /// [inputText] The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
  /// [resourceName] The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html
  const RoboDirectiveResponse({
    required this.actionType,
    required this.inputText,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'inputText': inputText,
      'resourceName': resourceName,
    };
  }

  factory RoboDirectiveResponse.fromMap(Map<String, dynamic> map) {
    return RoboDirectiveResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      inputText: pulumi.Input.fromValue(map['inputText'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
