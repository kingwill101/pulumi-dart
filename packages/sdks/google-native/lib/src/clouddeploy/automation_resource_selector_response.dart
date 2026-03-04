// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_attribute_response.dart';

/// AutomationResourceSelector contains the information to select the resources to which an Automation is going to be applied.
class AutomationResourceSelectorResponse {
  /// Contains attributes about a target.
  final pulumi.Input<List<TargetAttributeResponse>> targets;

  /// Creates a new [AutomationResourceSelectorResponse].
  /// [targets] Contains attributes about a target.
  AutomationResourceSelectorResponse({required this.targets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets':
          pulumi.Input.mapInputValue<
            List<TargetAttributeResponse>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<
                  TargetAttributeResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AutomationResourceSelectorResponse.fromMap(Map<String, dynamic> map) {
    return AutomationResourceSelectorResponse(
      targets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<TargetAttributeResponse>(
          map['targets']!,
          (value) => TargetAttributeResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
