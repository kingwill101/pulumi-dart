// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppDefaultChannelProfileWhatsappConfig {
  /// The description of the app version.
  final pulumi.Input<String?>? description;
  /// The display name of the app version.
  final pulumi.Input<String?>? displayName;
  /// (Output)
  /// The phone number in E.164 format.
  final pulumi.Input<String?>? phoneNumber;
  /// (Output)
  /// The Meta phone number ID.
  final pulumi.Input<String?>? phoneNumberId;
  /// (Output)
  /// The fetched Meta business profile thumbnail URL.
  final pulumi.Input<String?>? thumbnailUrl;
  /// (Output)
  /// The WhatsApp Business Account ID.
  final pulumi.Input<String?>? wabaId;

  /// Creates a new [AppVersionSnapshotAppDefaultChannelProfileWhatsappConfig].
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [phoneNumber] (Output)
  /// [phoneNumberId] (Output)
  /// [thumbnailUrl] (Output)
  /// [wabaId] (Output)
  const AppVersionSnapshotAppDefaultChannelProfileWhatsappConfig({
    this.description,
    this.displayName,
    this.phoneNumber,
    this.phoneNumberId,
    this.thumbnailUrl,
    this.wabaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'phoneNumber': ?phoneNumber,
      'phoneNumberId': ?phoneNumberId,
      'thumbnailUrl': ?thumbnailUrl,
      'wabaId': ?wabaId,
    };
  }

  factory AppVersionSnapshotAppDefaultChannelProfileWhatsappConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppDefaultChannelProfileWhatsappConfig(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumberId: (() { final guardedValue = map['phoneNumberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbnailUrl: (() { final guardedValue = map['thumbnailUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wabaId: (() { final guardedValue = map['wabaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
