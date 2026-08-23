// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_deployment_properties.dart';

/// Input properties used for looking up and filtering GoldengateDeployment resources.
class GoldengateDeploymentState {
  /// The date and time that the GoldengateDeployment was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name for the GoldengateDeployment.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the subscription entitlement associated with the
  /// GoldengateDeployment
  final pulumi.Input<String>? entitlementId;
  /// The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;
  /// The ID of the GoldengateDeployment to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String>? goldengateDeploymentId;
  /// The labels or tags associated with the GoldengateDeployment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the GoldengateDeployment resource in the following format:
  /// projects/{project}/locations/{region}/goldengateDeployments/{goldengate_deployment}
  final pulumi.Input<String>? name;
  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  final pulumi.Input<String>? ociUrl;
  /// The name of the OdbNetwork associated with the GoldengateDeployment.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the GoldengateDeployment for IP
  /// allocation.
  final pulumi.Input<String>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Properties of GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [GoldengateDeploymentState].
  /// [createTime] The date and time that the GoldengateDeployment was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// [displayName] The display name for the GoldengateDeployment.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the
  /// [gcpOracleZone] The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
  /// [goldengateDeploymentId] The ID of the GoldengateDeployment to create. This value is
  /// [labels] The labels or tags associated with the GoldengateDeployment.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the GoldengateDeployment resource in the following format:
  /// [ociUrl] HTTPS link to OCI resources exposed to Customer via UI Interface.
  /// [odbNetwork] The name of the OdbNetwork associated with the GoldengateDeployment.
  /// [odbSubnet] The name of the OdbSubnet associated with the GoldengateDeployment for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Properties of GoldengateDeployment.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  const GoldengateDeploymentState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
    this.gcpOracleZone,
    this.goldengateDeploymentId,
    this.labels,
    this.location,
    this.name,
    this.ociUrl,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'goldengateDeploymentId': ?goldengateDeploymentId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<GoldengateDeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory GoldengateDeploymentState.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goldengateDeploymentId: (() { final guardedValue = map['goldengateDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbSubnet: (() { final guardedValue = map['odbSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
