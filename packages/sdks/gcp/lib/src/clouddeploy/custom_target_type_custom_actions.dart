// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_custom_actions_include_skaffold_module.dart';

class CustomTargetTypeCustomActions {
  /// The Skaffold custom action responsible for deploy operations.
  final pulumi.Input<String> deployAction;
  /// List of Skaffold modules Cloud Deploy will include in the Skaffold Config as required before performing diagnose.
  /// Structure is documented below.
  final pulumi.Input<List<CustomTargetTypeCustomActionsIncludeSkaffoldModule>>? includeSkaffoldModules;
  /// The Skaffold custom action responsible for render operations. If not provided then Cloud Deploy will perform the render operations via `skaffold render`.
  final pulumi.Input<String>? renderAction;

  /// Creates a new [CustomTargetTypeCustomActions].
  /// [deployAction] The Skaffold custom action responsible for deploy operations.
  /// [includeSkaffoldModules] List of Skaffold modules Cloud Deploy will include in the Skaffold Config as required before performing diagnose.
  /// [renderAction] The Skaffold custom action responsible for render operations. If not provided then Cloud Deploy will perform the render operations via `skaffold render`.
  CustomTargetTypeCustomActions({
    required this.deployAction,
    this.includeSkaffoldModules,
    this.renderAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployAction': deployAction,
      'includeSkaffoldModules': ?pulumi.Input.mapOptionalInputValue<List<CustomTargetTypeCustomActionsIncludeSkaffoldModule>, List<Map<String, dynamic>>>(includeSkaffoldModules, (value) => pulumi.Input.encodeList<CustomTargetTypeCustomActionsIncludeSkaffoldModule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'renderAction': ?renderAction,
    };
  }

  factory CustomTargetTypeCustomActions.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActions(
      deployAction: (map['deployAction'] as String).input(),
      includeSkaffoldModules: map['includeSkaffoldModules'] == null ? null : (pulumi.Input.decodeList<CustomTargetTypeCustomActionsIncludeSkaffoldModule>(map['includeSkaffoldModules']!, (value) => CustomTargetTypeCustomActionsIncludeSkaffoldModule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      renderAction: map['renderAction'] == null ? null : (map['renderAction']! as String).input(),
    );
  }
}

