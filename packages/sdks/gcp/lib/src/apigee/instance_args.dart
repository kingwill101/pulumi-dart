// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_logging_config.dart';

/// {@template pulumi_apigee_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_apigee_instance_instance_args_doc}
class InstanceArgs {
  /// Access logging configuration enables the access logging feature at the instance.
  /// Apigee customers can enable access logging to ship the access logs to their own project's cloud logging.
  /// Structure is documented below.
  final pulumi.Input<InstanceAccessLoggingConfig>? accessLoggingConfig;
  /// Optional. Customer accept list represents the list of projects (id/number) on customer
  /// side that can privately connect to the service attachment. It is an optional field
  /// which the customers can provide during the instance creation. By default, the customer
  /// project associated with the Apigee organization will be included to the list.
  final pulumi.Input<List<String>>? consumerAcceptLists;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the instance.
  final pulumi.Input<String>? description;
  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final pulumi.Input<String>? diskEncryptionKeyName;
  /// Display name of the instance.
  final pulumi.Input<String>? displayName;
  /// IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// the Apigee instance creation. This optional range, if provided, should be freely
  /// available as part of larger named range the customer has allocated to the Service
  /// Networking peering. If this is not provided, Apigee will automatically request for any
  /// available /22 CIDR block from Service Networking. The customer should use this CIDR block
  /// for configuring their firewall needs to allow traffic from Apigee.
  /// Input format: "a.b.c.d/22"
  final pulumi.Input<String>? ipRange;
  /// Required. Compute Engine location where the instance resides.
  final pulumi.Input<String> location;
  /// Resource ID of the instance.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// The size of the CIDR block range that will be reserved by the instance. For valid values,
  /// see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation.
  final pulumi.Input<String>? peeringCidrRange;

  /// Creates a new [InstanceArgs].
  /// [accessLoggingConfig] Access logging configuration enables the access logging feature at the instance.
  /// [consumerAcceptLists] Optional. Customer accept list represents the list of projects (id/number) on customer
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the instance.
  /// [diskEncryptionKeyName] Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// [displayName] Display name of the instance.
  /// [ipRange] IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// [location] Required. Compute Engine location where the instance resides.
  /// [name] Resource ID of the instance.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringCidrRange] The size of the CIDR block range that will be reserved by the instance. For valid values,
  const InstanceArgs({
    this.accessLoggingConfig,
    this.consumerAcceptLists,
    this.deletionPolicy,
    this.description,
    this.diskEncryptionKeyName,
    this.displayName,
    this.ipRange,
    required this.location,
    this.name,
    required this.orgId,
    this.peeringCidrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLoggingConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAccessLoggingConfig, Map<String, dynamic>>(accessLoggingConfig, (value) => value.toMap()),
      'consumerAcceptLists': ?consumerAcceptLists,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskEncryptionKeyName': ?diskEncryptionKeyName,
      'displayName': ?displayName,
      'ipRange': ?ipRange,
      'location': location,
      'name': ?name,
      'orgId': orgId,
      'peeringCidrRange': ?peeringCidrRange,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accessLoggingConfig: (() { final guardedValue = map['accessLoggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAccessLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consumerAcceptLists: (() { final guardedValue = map['consumerAcceptLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKeyName: (() { final guardedValue = map['diskEncryptionKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      peeringCidrRange: (() { final guardedValue = map['peeringCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
