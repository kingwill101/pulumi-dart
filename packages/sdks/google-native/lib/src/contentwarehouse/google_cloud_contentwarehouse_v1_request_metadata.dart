// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_user_info.dart';

/// Meta information is used to improve the performance of the service.
class GoogleCloudContentwarehouseV1RequestMetadata {
  /// Provides user unique identification and groups information.
  final pulumi.Input<GoogleCloudContentwarehouseV1UserInfo>? userInfo;

  /// Creates a new [GoogleCloudContentwarehouseV1RequestMetadata].
  /// [userInfo] Provides user unique identification and groups information.
  const GoogleCloudContentwarehouseV1RequestMetadata({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1UserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1RequestMetadata.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1RequestMetadata(
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

