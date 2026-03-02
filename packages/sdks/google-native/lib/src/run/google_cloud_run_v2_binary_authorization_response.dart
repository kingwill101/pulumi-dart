// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Binary Authorization feature.
class GoogleCloudRunV2BinaryAuthorizationResponse {
  /// If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final pulumi.Input<String> breakglassJustification;
  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final pulumi.Input<bool> useDefault;

  /// Creates a new [GoogleCloudRunV2BinaryAuthorizationResponse].
  /// [breakglassJustification] If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  /// [useDefault] If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  GoogleCloudRunV2BinaryAuthorizationResponse({
    required this.breakglassJustification,
    required this.useDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakglassJustification': breakglassJustification,
      'useDefault': useDefault,
    };
  }

  factory GoogleCloudRunV2BinaryAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2BinaryAuthorizationResponse(
      breakglassJustification: (map['breakglassJustification'] as String).input(),
      useDefault: (map['useDefault'] as bool).input(),
    );
  }
}

