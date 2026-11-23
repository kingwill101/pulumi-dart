// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_kind_app_params_scope.dart';

class UnitKindAppParams {
  /// Grouping used to construct the name of the App Hub Application.
  /// Multiple UnitKinds can specify the same group to use the same
  /// Application across their respective Units. Corresponds to the
  /// appBoundaryId in the ADC composite ApplicationTemplate. If empty,
  /// the service creates no App Hub application.
  final pulumi.Input<String?>? group;
  /// Corresponds to the scope in the ADC composite ApplicationTemplate.
  /// Structure is documented below.
  final pulumi.Input<UnitKindAppParamsScope?>? scope;

  /// Creates a new [UnitKindAppParams].
  /// [group] Grouping used to construct the name of the App Hub Application.
  /// [scope] Corresponds to the scope in the ADC composite ApplicationTemplate.
  const UnitKindAppParams({
    this.group,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'scope': ?pulumi.Input.mapOptionalInputValue<UnitKindAppParamsScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory UnitKindAppParams.fromMap(Map<String, dynamic> map) {
    return UnitKindAppParams(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitKindAppParamsScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
