// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_api_method.dart';

class ServiceApi {
  /// A list of Method objects; structure is documented below.
  final pulumi.Input<List<ServiceApiMethod>>? methods;
  /// The simple name of the endpoint as described in the config.
  final pulumi.Input<String>? name;
  /// `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  final pulumi.Input<String>? syntax;
  /// A version string for this api. If specified, will have the form major-version.minor-version, e.g. `1.10`.
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceApi].
  /// [methods] A list of Method objects; structure is documented below.
  /// [name] The simple name of the endpoint as described in the config.
  /// [syntax] `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  /// [version] A version string for this api. If specified, will have the form major-version.minor-version, e.g. `1.10`.
  ServiceApi({
    this.methods,
    this.name,
    this.syntax,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?pulumi.Input.mapOptionalInputValue<List<ServiceApiMethod>, List<Map<String, dynamic>>>(methods, (value) => pulumi.Input.encodeList<ServiceApiMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'syntax': ?syntax,
      'version': ?version,
    };
  }

  factory ServiceApi.fromMap(Map<String, dynamic> map) {
    return ServiceApi(
      methods: map['methods'] == null ? null : (pulumi.Input.decodeList<ServiceApiMethod>(map['methods']!, (value) => ServiceApiMethod.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      syntax: map['syntax'] == null ? null : (map['syntax']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

