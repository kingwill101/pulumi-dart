// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_index_get_application_get_application_args_doc}
class GetApplicationArgs {
  /// The name of the application in New Relic.
  final pulumi.Input<String> name;

  /// Creates a new [GetApplicationArgs].
  /// [name] The name of the application in New Relic.
  const GetApplicationArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

