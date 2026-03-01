// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceConfig resources.
class ServiceConfigState {
  /// Base64-url-safe-encoded config data
  final pulumi.Input<String>? data;
  /// User-defined name of the config
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceConfigState].
  /// [data] Base64-url-safe-encoded config data
  /// [name] User-defined name of the config
  ServiceConfigState({
    pulumi.Output<String>? data,
    pulumi.Output<String>? name,
  }) :
      data = pulumi.Input.asOptionalInput<String>(data),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': ?name,
    };
  }

  factory ServiceConfigState.fromMap(Map<String, dynamic> map) {
    return ServiceConfigState(
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

