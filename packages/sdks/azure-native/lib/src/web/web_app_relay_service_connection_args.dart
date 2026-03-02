// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_relay_service_connection_args_doc}
/// The set of arguments for WebAppRelayServiceConnection.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_relay_service_connection_args_doc}
class WebAppRelayServiceConnectionArgs {
  final pulumi.Input<String>? biztalkUri;
  final pulumi.Input<String>? entityConnectionString;
  final pulumi.Input<String>? entityName;
  final pulumi.Input<String>? hostname;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? resourceConnectionString;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? resourceType;

  /// Creates a new [WebAppRelayServiceConnectionArgs].
  /// [biztalkUri] Optional.
  /// [entityConnectionString] Optional.
  /// [entityName] Optional.
  /// [hostname] Optional.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [port] Optional.
  /// [resourceConnectionString] Optional.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [resourceType] Optional.
  WebAppRelayServiceConnectionArgs({
    this.biztalkUri,
    this.entityConnectionString,
    this.entityName,
    this.hostname,
    this.kind,
    required this.name,
    this.port,
    this.resourceConnectionString,
    required this.resourceGroupName,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biztalkUri': ?biztalkUri,
      'entityConnectionString': ?entityConnectionString,
      'entityName': ?entityName,
      'hostname': ?hostname,
      'kind': ?kind,
      'name': name,
      'port': ?port,
      'resourceConnectionString': ?resourceConnectionString,
      'resourceGroupName': resourceGroupName,
      'resourceType': ?resourceType,
    };
  }

  factory WebAppRelayServiceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppRelayServiceConnectionArgs(
      biztalkUri: map['biztalkUri'] == null ? null : (map['biztalkUri']! as String).input(),
      entityConnectionString: map['entityConnectionString'] == null ? null : (map['entityConnectionString']! as String).input(),
      entityName: map['entityName'] == null ? null : (map['entityName']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      resourceConnectionString: map['resourceConnectionString'] == null ? null : (map['resourceConnectionString']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
    );
  }
}

