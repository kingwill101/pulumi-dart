// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The predicted change to the resource property.
class DeploymentStacksWhatIfPropertyChangeResponse {
  /// The predicted value after the deployment is executed.
  final pulumi.Input<dynamic>? after;
  /// The predicted value before the deployment is executed.
  final pulumi.Input<dynamic>? before;
  /// Type of change that will be made to the resource when the deployment is executed.
  final pulumi.Input<String> changeType;
  /// Nested property changes.
  final pulumi.Input<List<DeploymentStacksWhatIfPropertyChangeResponse>>? children;
  /// Type of change that will be made to the resource when the deployment is executed.
  final pulumi.Input<String> path;

  /// Creates a new [DeploymentStacksWhatIfPropertyChangeResponse].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  /// [changeType] Type of change that will be made to the resource when the deployment is executed.
  /// [children] Nested property changes.
  /// [path] Type of change that will be made to the resource when the deployment is executed.
  DeploymentStacksWhatIfPropertyChangeResponse({
    this.after,
    this.before,
    required this.changeType,
    this.children,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
      'changeType': changeType,
      'children': ?pulumi.Input.mapOptionalInputValue<List<DeploymentStacksWhatIfPropertyChangeResponse>, List<Map<String, dynamic>>>(children, (value) => pulumi.Input.encodeList<DeploymentStacksWhatIfPropertyChangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
    };
  }

  factory DeploymentStacksWhatIfPropertyChangeResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfPropertyChangeResponse(
      after: map['after'] == null ? null : (map['after']!).input(),
      before: map['before'] == null ? null : (map['before']!).input(),
      changeType: (map['changeType'] as String).input(),
      children: map['children'] == null ? null : (pulumi.Input.decodeList<DeploymentStacksWhatIfPropertyChangeResponse>(map['children']!, (value) => DeploymentStacksWhatIfPropertyChangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      path: (map['path'] as String).input(),
    );
  }
}

