// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppDefaultChannelProfileWhatsappConfig {
  /// (Output)
  /// The description of the Meta business page or profile.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// The fetched Meta business page name.
  final pulumi.Input<String?>? displayName;
  /// The phone number in E.164 format.
  final pulumi.Input<String?>? phoneNumber;
  /// The Meta phone number ID.
  final pulumi.Input<String> phoneNumberId;
  /// (Output)
  /// The fetched Meta business profile thumbnail URL.
  final pulumi.Input<String?>? thumbnailUrl;
  /// The WhatsApp Business Account ID.
  final pulumi.Input<String> wabaId;

  /// Creates a new [AppDefaultChannelProfileWhatsappConfig].
  /// [description] (Output)
  /// [displayName] (Output)
  /// [phoneNumber] The phone number in E.164 format.
  /// [phoneNumberId] The Meta phone number ID.
  /// [thumbnailUrl] (Output)
  /// [wabaId] The WhatsApp Business Account ID.
  const AppDefaultChannelProfileWhatsappConfig({
    this.description,
    this.displayName,
    this.phoneNumber,
    required this.phoneNumberId,
    this.thumbnailUrl,
    required this.wabaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'phoneNumber': ?phoneNumber,
      'phoneNumberId': phoneNumberId,
      'thumbnailUrl': ?thumbnailUrl,
      'wabaId': wabaId,
    };
  }

  factory AppDefaultChannelProfileWhatsappConfig.fromMap(Map<String, dynamic> map) {
    return AppDefaultChannelProfileWhatsappConfig(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumberId: pulumi.Input.fromValue(map['phoneNumberId'] as String),
      thumbnailUrl: (() { final guardedValue = map['thumbnailUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wabaId: pulumi.Input.fromValue(map['wabaId'] as String),
    );
  }
}
