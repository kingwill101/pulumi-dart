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
    this.data,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': ?name,
    };
  }

  factory ServiceConfigState.fromMap(Map<String, dynamic> map) {
    return ServiceConfigState(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

