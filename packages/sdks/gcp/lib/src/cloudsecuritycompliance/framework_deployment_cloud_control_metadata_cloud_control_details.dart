// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetails {
  /// Major revision of cloudcontrol
  final pulumi.Input<String> majorRevisionId;
  /// The name of the CloudControl in the format:
  /// "{parent}/locations/{location}/cloudControls/{cloud-control}"
  final pulumi.Input<String> name;
  /// Parameters is a key-value pair that is required by the CloudControl. The
  /// specification of these parameters will be present in cloudcontrol.Eg: {
  /// "name": "location","value": "us-west-1"}.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter>?>? parameters;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetails].
  /// [majorRevisionId] Major revision of cloudcontrol
  /// [name] The name of the CloudControl in the format:
  /// [parameters] Parameters is a key-value pair that is required by the CloudControl. The
  const FrameworkDeploymentCloudControlMetadataCloudControlDetails({
    required this.majorRevisionId,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'majorRevisionId': majorRevisionId,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetails.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetails(
      majorRevisionId: pulumi.Input.fromValue(map['majorRevisionId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter>(guardedValue, (value) => FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
