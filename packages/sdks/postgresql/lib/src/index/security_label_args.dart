// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_security_label_security_label_args_doc}
/// The set of arguments for SecurityLabel.
/// {@endtemplate}
/// {@macro pulumi_index_security_label_security_label_args_doc}
class SecurityLabelArgs {
  /// The value of the security label.
  final pulumi.Input<String> label;
  /// The name of the provider with which this label is to be associated.
  final pulumi.Input<String> labelProvider;
  /// The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  final pulumi.Input<String> objectName;
  /// The PostgreSQL object type to apply this security label to.
  final pulumi.Input<String> objectType;

  /// Creates a new [SecurityLabelArgs].
  /// [label] The value of the security label.
  /// [labelProvider] The name of the provider with which this label is to be associated.
  /// [objectName] The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  /// [objectType] The PostgreSQL object type to apply this security label to.
  SecurityLabelArgs({
    required this.label,
    required this.labelProvider,
    required this.objectName,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'labelProvider': labelProvider,
      'objectName': objectName,
      'objectType': objectType,
    };
  }

  factory SecurityLabelArgs.fromMap(Map<String, dynamic> map) {
    return SecurityLabelArgs(
      label: pulumi.Input.fromValue(map['label'] as String),
      labelProvider: pulumi.Input.fromValue(map['labelProvider'] as String),
      objectName: pulumi.Input.fromValue(map['objectName'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}

