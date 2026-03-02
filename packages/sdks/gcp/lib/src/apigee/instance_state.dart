// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_logging_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Access logging configuration enables the access logging feature at the instance.
  /// Apigee customers can enable access logging to ship the access logs to their own project's cloud logging.
  /// Structure is documented below.
  final pulumi.Input<InstanceAccessLoggingConfig>? accessLoggingConfig;
  /// Optional. Customer accept list represents the list of projects (id/number) on customer
  /// side that can privately connect to the service attachment. It is an optional field
  /// which the customers can provide during the instance creation. By default, the customer
  /// project associated with the Apigee organization will be included to the list.
  final pulumi.Input<List<String>>? consumerAcceptLists;
  /// Description of the instance.
  final pulumi.Input<String>? description;
  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final pulumi.Input<String>? diskEncryptionKeyName;
  /// Display name of the instance.
  final pulumi.Input<String>? displayName;
  /// Output only. Hostname or IP address of the exposed Apigee endpoint used by clients to connect to the service.
  final pulumi.Input<String>? host;
  /// IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// the Apigee instance creation. This optional range, if provided, should be freely
  /// available as part of larger named range the customer has allocated to the Service
  /// Networking peering. If this is not provided, Apigee will automatically request for any
  /// available /22 CIDR block from Service Networking. The customer should use this CIDR block
  /// for configuring their firewall needs to allow traffic from Apigee.
  /// Input format: "a.b.c.d/22"
  final pulumi.Input<String>? ipRange;
  /// Required. Compute Engine location where the instance resides.
  final pulumi.Input<String>? location;
  /// Resource ID of the instance.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// The size of the CIDR block range that will be reserved by the instance. For valid values,
  /// see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation.
  final pulumi.Input<String>? peeringCidrRange;
  /// Output only. Port number of the exposed Apigee endpoint.
  final pulumi.Input<String>? port;
  /// Output only. Resource name of the service attachment created for the instance in
  /// the format: projects/*/regions/*/serviceAttachments/* Apigee customers can privately
  /// forward traffic to this service attachment using the PSC endpoints.
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [InstanceState].
  /// [accessLoggingConfig] Access logging configuration enables the access logging feature at the instance.
  /// [consumerAcceptLists] Optional. Customer accept list represents the list of projects (id/number) on customer
  /// [description] Description of the instance.
  /// [diskEncryptionKeyName] Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// [displayName] Display name of the instance.
  /// [host] Output only. Hostname or IP address of the exposed Apigee endpoint used by clients to connect to the service.
  /// [ipRange] IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// [location] Required. Compute Engine location where the instance resides.
  /// [name] Resource ID of the instance.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringCidrRange] The size of the CIDR block range that will be reserved by the instance. For valid values,
  /// [port] Output only. Port number of the exposed Apigee endpoint.
  /// [serviceAttachment] Output only. Resource name of the service attachment created for the instance in
  InstanceState({
    this.accessLoggingConfig,
    this.consumerAcceptLists,
    this.description,
    this.diskEncryptionKeyName,
    this.displayName,
    this.host,
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
      'accessLoggingConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAccessLoggingConfig, Map<String, dynamic>>(accessLoggingConfig, (value) => value.toMap()),
      'consumerAcceptLists': ?consumerAcceptLists,
      'description': ?description,
      'diskEncryptionKeyName': ?diskEncryptionKeyName,
      'displayName': ?displayName,
      'host': ?host,
      'ipRange': ?ipRange,
      'location': ?location,
      'name': ?name,
      'orgId': ?orgId,
      'peeringCidrRange': ?peeringCidrRange,
      'port': ?port,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accessLoggingConfig: map['accessLoggingConfig'] == null ? null : (InstanceAccessLoggingConfig.fromMap((map['accessLoggingConfig']! as Map).cast<String, dynamic>())).input(),
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : ((map['consumerAcceptLists']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskEncryptionKeyName: map['diskEncryptionKeyName'] == null ? null : (map['diskEncryptionKeyName']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      ipRange: map['ipRange'] == null ? null : (map['ipRange']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      peeringCidrRange: map['peeringCidrRange'] == null ? null : (map['peeringCidrRange']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      serviceAttachment: map['serviceAttachment'] == null ? null : (map['serviceAttachment']! as String).input(),
    );
  }
}

