// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_access_logging_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAccessLoggingConfig> accessLoggingConfigs;
  final List<String> consumerAcceptLists;
  final String deletionPolicy;
  final String description;
  final String diskEncryptionKeyName;
  final String displayName;
  /// The hostname or IP address of the exposed Apigee endpoint. [3]
  final String host;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The IP range used by the instance. [3]
  final String ipRange;
  /// The GCP region where the instance resides. [3]
  final String location;
  final String name;
  final String orgId;
  final String peeringCidrRange;
  /// The port number of the exposed Apigee endpoint. [3]
  final String port;
  /// The PSC service attachment for the instance. [3]
  final String serviceAttachment;

  /// Creates a new [GetInstanceResult].
  /// [accessLoggingConfigs] Required.
  /// [consumerAcceptLists] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [diskEncryptionKeyName] Required.
  /// [displayName] Required.
  /// [host] The hostname or IP address of the exposed Apigee endpoint. [3]
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipRange] The IP range used by the instance. [3]
  /// [location] The GCP region where the instance resides. [3]
  /// [name] Required.
  /// [orgId] Required.
  /// [peeringCidrRange] Required.
  /// [port] The port number of the exposed Apigee endpoint. [3]
  /// [serviceAttachment] The PSC service attachment for the instance. [3]
  const GetInstanceResult({
    required this.accessLoggingConfigs,
    required this.consumerAcceptLists,
    required this.deletionPolicy,
    required this.description,
    required this.diskEncryptionKeyName,
    required this.displayName,
    required this.host,
    required this.id,
    required this.ipRange,
    required this.location,
    required this.name,
    required this.orgId,
    required this.peeringCidrRange,
    required this.port,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLoggingConfigs': pulumi.Input.encodeList<GetInstanceAccessLoggingConfig, Map<String, dynamic>>(accessLoggingConfigs, (value) => value.toMap()),
      'consumerAcceptLists': consumerAcceptLists,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'diskEncryptionKeyName': diskEncryptionKeyName,
      'displayName': displayName,
      'host': host,
      'id': id,
      'ipRange': ipRange,
      'location': location,
      'name': name,
      'orgId': orgId,
      'peeringCidrRange': peeringCidrRange,
      'port': port,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      accessLoggingConfigs: pulumi.Input.decodeList<GetInstanceAccessLoggingConfig>(map['accessLoggingConfigs']!, (value) => GetInstanceAccessLoggingConfig.fromMap((value as Map).cast<String, dynamic>())),
      consumerAcceptLists: (map['consumerAcceptLists'] as List).cast<String>(),
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      diskEncryptionKeyName: map['diskEncryptionKeyName'] as String,
      displayName: map['displayName'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      ipRange: map['ipRange'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      orgId: map['orgId'] as String,
      peeringCidrRange: map['peeringCidrRange'] as String,
      port: map['port'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
