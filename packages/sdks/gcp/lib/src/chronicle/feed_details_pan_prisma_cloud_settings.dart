// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_pan_prisma_cloud_settings_authentication.dart';

class FeedDetailsPanPrismaCloudSettings {
  /// PAN Prisma Cloud auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsPanPrismaCloudSettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsPanPrismaCloudSettings].
  /// [authentication] PAN Prisma Cloud auth.
  /// [hostname] API Hostname.
  const FeedDetailsPanPrismaCloudSettings({
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsPanPrismaCloudSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsPanPrismaCloudSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsPanPrismaCloudSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsPanPrismaCloudSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
