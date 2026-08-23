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
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// A collection of offerings for the security connector.
  final pulumi.Input<List<CspmMonitorAwsOffering>>? offerings;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String>? securityConnectorName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecurityConnectorArgs].
  /// [environmentData] The security connector environment data.
  /// [environmentName] The multi cloud resource's cloud name.
  /// [hierarchyIdentifier] The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  /// [kind] Kind of the resource
  /// [location] The geo-location where the resource lives
  /// [offerings] A collection of offerings for the security connector.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  /// [tags] Resource tags.
  const SecurityConnectorArgs({
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
      environmentData: (() { final guardedValue = map['environmentData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsEnvironmentData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hierarchyIdentifier: (() { final guardedValue = map['hierarchyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerings: (() { final guardedValue = map['offerings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CspmMonitorAwsOffering>(guardedValue, (value) => CspmMonitorAwsOffering.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityConnectorName: (() { final guardedValue = map['securityConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
