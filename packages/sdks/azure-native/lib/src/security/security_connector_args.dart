// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_environment_data.dart';
import 'cspm_monitor_aws_offering.dart';

/// {@template pulumi_security_security_connector_args_doc}
/// The set of arguments for SecurityConnector.
/// {@endtemplate}
/// {@macro pulumi_security_security_connector_args_doc}
class SecurityConnectorArgs {
  /// The security connector environment data.
  final pulumi.Input<AwsEnvironmentData>? environmentData;
  /// The multi cloud resource's cloud name.
  final pulumi.Input<String>? environmentName;
  /// The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  final pulumi.Input<String>? hierarchyIdentifier;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  /// Location where the resource is stored
  final pulumi.Input<String>? location;
  /// A collection of offerings for the security connector.
  final pulumi.Input<List<CspmMonitorAwsOffering>>? offerings;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String>? securityConnectorName;
  /// A list of key value pairs that describe the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecurityConnectorArgs].
  /// [environmentData] The security connector environment data.
  /// [environmentName] The multi cloud resource's cloud name.
  /// [hierarchyIdentifier] The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [offerings] A collection of offerings for the security connector.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  /// [tags] A list of key value pairs that describe the resource.
  SecurityConnectorArgs({
    this.environmentData,
    this.environmentName,
    this.hierarchyIdentifier,
    this.kind,
    this.location,
    this.offerings,
    required this.resourceGroupName,
    this.securityConnectorName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentData': ?pulumi.Input.mapOptionalInputValue<AwsEnvironmentData, Map<String, dynamic>>(environmentData, (value) => value.toMap()),
      'environmentName': ?environmentName,
      'hierarchyIdentifier': ?hierarchyIdentifier,
      'kind': ?kind,
      'location': ?location,
      'offerings': ?pulumi.Input.mapOptionalInputValue<List<CspmMonitorAwsOffering>, List<Map<String, dynamic>>>(offerings, (value) => pulumi.Input.encodeList<CspmMonitorAwsOffering, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': ?securityConnectorName,
      'tags': ?tags,
    };
  }

  factory SecurityConnectorArgs.fromMap(Map<String, dynamic> map) {
    return SecurityConnectorArgs(
      environmentData: map['environmentData'] == null ? null : (AwsEnvironmentData.fromMap((map['environmentData']! as Map).cast<String, dynamic>())).input(),
      environmentName: map['environmentName'] == null ? null : (map['environmentName']! as String).input(),
      hierarchyIdentifier: map['hierarchyIdentifier'] == null ? null : (map['hierarchyIdentifier']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      offerings: map['offerings'] == null ? null : (pulumi.Input.decodeList<CspmMonitorAwsOffering>(map['offerings']!, (value) => CspmMonitorAwsOffering.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityConnectorName: map['securityConnectorName'] == null ? null : (map['securityConnectorName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

