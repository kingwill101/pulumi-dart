// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_info_type_likelihood_min_likelihood.dart';

/// Configuration for setting a minimum likelihood per infotype. Used to customize the minimum likelihood level for specific infotypes in the request. For example, use this if you want to lower the precision for PERSON_NAME without lowering the precision for the other infotypes in the request.
class GooglePrivacyDlpV2InfoTypeLikelihood {
  /// Type of information the likelihood threshold applies to. Only one likelihood per info_type should be provided. If InfoTypeLikelihood does not have an info_type, the configuration fails.
  final pulumi.Input<GooglePrivacyDlpV2InfoType>? infoType;

  /// Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood>?
  minLikelihood;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeLikelihood].
  /// [infoType] Type of information the likelihood threshold applies to. Only one likelihood per info_type should be provided. If InfoTypeLikelihood does not have an info_type, the configuration fails.
  /// [minLikelihood] Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
  GooglePrivacyDlpV2InfoTypeLikelihood({this.infoType, this.minLikelihood});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2InfoType,
            Map<String, dynamic>
          >(infoType, (value) => value.toMap()),
      'minLikelihood':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood,
            String
          >(minLikelihood, (value) => value.wireValue),
    };
  }

  factory GooglePrivacyDlpV2InfoTypeLikelihood.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2InfoTypeLikelihood(
      infoType: (() {
        final guardedValue = map['infoType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2InfoType.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      minLikelihood: (() {
        final guardedValue = map['minLikelihood'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
