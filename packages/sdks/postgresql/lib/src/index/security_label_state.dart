// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityLabel resources.
class SecurityLabelState {
  /// The value of the security label.
  final pulumi.Input<String>? label;
  /// The name of the provider with which this label is to be associated.
  final pulumi.Input<String>? labelProvider;
  /// The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  final pulumi.Input<String>? objectName;
  /// The PostgreSQL object type to apply this security label to.
  final pulumi.Input<String>? objectType;

  /// Creates a new [SecurityLabelState].
  /// [label] The value of the security label.
  /// [labelProvider] The name of the provider with which this label is to be associated.
  /// [objectName] The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  /// [objectType] The PostgreSQL object type to apply this security label to.
  SecurityLabelState({
    this.label,
    this.labelProvider,
    this.objectName,
    this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'labelProvider': ?labelProvider,
      'objectName': ?objectName,
      'objectType': ?objectType,
    };
  }

  factory SecurityLabelState.fromMap(Map<String, dynamic> map) {
    return SecurityLabelState(
      label: map['label'] == null ? null : (map['label']! as String).input(),
      labelProvider: map['labelProvider'] == null ? null : (map['labelProvider']! as String).input(),
      objectName: map['objectName'] == null ? null : (map['objectName']! as String).input(),
      objectType: map['objectType'] == null ? null : (map['objectType']! as String).input(),
    );
  }
}

