// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_date_shift_config_context.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_date_shift_config_crypto_key.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig {
  /// Points to the field that contains the context, for example, an entity id.
  /// If set, must also set cryptoKey. If set, shift will be consistent for the given context.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigContext
  >?
  context;

  /// Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and cryptoKey. If set, must also set context. Can only be applied to table items.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKey
  >?
  cryptoKey;

  /// For example, -5 means shift date to at most 5 days back in the past.
  final pulumi.Input<int> lowerBoundDays;

  /// Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction.
  /// For example, 3 means shift date to at most 3 days into the future.
  final pulumi.Input<int> upperBoundDays;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig].
  /// [context] Points to the field that contains the context, for example, an entity id.
  /// [cryptoKey] Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and cryptoKey. If set, must also set context. Can only be applied to table items.
  /// [lowerBoundDays] For example, -5 means shift date to at most 5 days back in the past.
  /// [upperBoundDays] Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig({
    this.context,
    this.cryptoKey,
    required this.lowerBoundDays,
    required this.upperBoundDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigContext,
            Map<String, dynamic>
          >(context, (value) => value.toMap()),
      'cryptoKey':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKey,
            Map<String, dynamic>
          >(cryptoKey, (value) => value.toMap()),
      'lowerBoundDays': lowerBoundDays,
      'upperBoundDays': upperBoundDays,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig(
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigContext.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cryptoKey: (() {
        final guardedValue = map['cryptoKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lowerBoundDays: pulumi.Input.fromValue(map['lowerBoundDays'] as int),
      upperBoundDays: pulumi.Input.fromValue(map['upperBoundDays'] as int),
    );
  }
}
