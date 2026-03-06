// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail_parameter.dart';

class FrameworkCloudControlDetail {
  /// Major revision of cloudcontrol
  final pulumi.Input<String> majorRevisionId;
  /// The name of the CloudControl in the format:
  /// “organizations/{organization}/locations/{location}/cloudControls/{cloud-control}”
  final pulumi.Input<String> name;
  /// Parameters is a key-value pair that is required by the CloudControl. The
  /// specification of these parameters will be present in cloudcontrol.Eg: {
  /// "name": "location","value": "us-west-1"}.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkCloudControlDetailParameter>>? parameters;

  /// Creates a new [FrameworkCloudControlDetail].
  /// [majorRevisionId] Major revision of cloudcontrol
  /// [name] The name of the CloudControl in the format:
  /// [parameters] Parameters is a key-value pair that is required by the CloudControl. The
  const FrameworkCloudControlDetail({
    required this.majorRevisionId,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'majorRevisionId': majorRevisionId,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<FrameworkCloudControlDetailParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<FrameworkCloudControlDetailParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrameworkCloudControlDetail.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetail(
      majorRevisionId: pulumi.Input.fromValue(map['majorRevisionId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkCloudControlDetailParameter>(guardedValue, (value) => FrameworkCloudControlDetailParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

