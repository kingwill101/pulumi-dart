// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_access_logging_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAccessLoggingConfig>? accessLoggingConfigs;
  final List<String>? consumerAcceptLists;
  final String? deletionPolicy;
  final String? description;
  final String? diskEncryptionKeyName;
  final String? displayName;
  /// The hostname or IP address of the exposed Apigee endpoint. [3]
  final String? host;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The IP range used by the instance. [3]
  final String? ipRange;
  /// The GCP region where the instance resides. [3]
  final String? location;
  final String? name;
  final String? orgId;
  final String? peeringCidrRange;
  /// The port number of the exposed Apigee endpoint. [3]
  final String? port;
  /// The PSC service attachment for the instance. [3]
  final String? serviceAttachment;

  /// Creates a new [GetInstanceResult].
  /// [accessLoggingConfigs] Optional.
  /// [consumerAcceptLists] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [diskEncryptionKeyName] Optional.
  /// [displayName] Optional.
  /// [host] The hostname or IP address of the exposed Apigee endpoint. [3]
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipRange] The IP range used by the instance. [3]
  /// [location] The GCP region where the instance resides. [3]
  /// [name] Optional.
  /// [orgId] Optional.
  /// [peeringCidrRange] Optional.
  /// [port] The port number of the exposed Apigee endpoint. [3]
  /// [serviceAttachment] The PSC service attachment for the instance. [3]
  const GetInstanceResult({
    this.accessLoggingConfigs,
    this.consumerAcceptLists,
    this.deletionPolicy,
    this.description,
    this.diskEncryptionKeyName,
    this.displayName,
    this.host,
    this.id,
    this.ipRange,
    this.location,
    this.name,
    this.orgId,
    this.peeringCidrRange,
    this.port,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLoggingConfigs': ?(() { final guardedValue = accessLoggingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceAccessLoggingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consumerAcceptLists': ?consumerAcceptLists,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskEncryptionKeyName': ?diskEncryptionKeyName,
      'displayName': ?displayName,
      'host': ?host,
      'id': ?id,
      'ipRange': ?ipRange,
      'location': ?location,
      'name': ?name,
      'orgId': ?orgId,
      'peeringCidrRange': ?peeringCidrRange,
      'port': ?port,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      accessLoggingConfigs: (() { final guardedValue = map['accessLoggingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceAccessLoggingConfig>(guardedValue, (value) => GetInstanceAccessLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      consumerAcceptLists: (() { final guardedValue = map['consumerAcceptLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionKeyName: (() { final guardedValue = map['diskEncryptionKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringCidrRange: (() { final guardedValue = map['peeringCidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
