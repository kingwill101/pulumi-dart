// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response_vmmigration_v1alpha1.dart';
import 'localized_message_response_vmmigration_v1alpha1.dart';

/// Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.
class MigrationWarningResponseVmmigrationV1alpha1 {
  /// Suggested action for solving the warning.
  final pulumi.Input<LocalizedMessageResponseVmmigrationV1alpha1> actionItem;
  /// The warning code.
  final pulumi.Input<String> code;
  /// URL(s) pointing to additional information on handling the current warning.
  final pulumi.Input<List<LinkResponseVmmigrationV1alpha1>> helpLinks;
  /// The localized warning message.
  final pulumi.Input<LocalizedMessageResponseVmmigrationV1alpha1> warningMessage;
  /// The time the warning occurred.
  final pulumi.Input<String> warningTime;

  /// Creates a new [MigrationWarningResponseVmmigrationV1alpha1].
  /// [actionItem] Suggested action for solving the warning.
  /// [code] The warning code.
  /// [helpLinks] URL(s) pointing to additional information on handling the current warning.
  /// [warningMessage] The localized warning message.
  /// [warningTime] The time the warning occurred.
  const MigrationWarningResponseVmmigrationV1alpha1({
    required this.actionItem,
    required this.code,
    required this.helpLinks,
    required this.warningMessage,
    required this.warningTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionItem': pulumi.Input.mapInputValue<LocalizedMessageResponseVmmigrationV1alpha1, Map<String, dynamic>>(actionItem, (value) => value.toMap()),
      'code': code,
      'helpLinks': pulumi.Input.mapInputValue<List<LinkResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(helpLinks, (value) => pulumi.Input.encodeList<LinkResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warningMessage': pulumi.Input.mapInputValue<LocalizedMessageResponseVmmigrationV1alpha1, Map<String, dynamic>>(warningMessage, (value) => value.toMap()),
      'warningTime': warningTime,
    };
  }

  factory MigrationWarningResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return MigrationWarningResponseVmmigrationV1alpha1(
      actionItem: pulumi.Input.fromValue(LocalizedMessageResponseVmmigrationV1alpha1.fromMap((map['actionItem']! as Map).cast<String, dynamic>())),
      code: pulumi.Input.fromValue(map['code'] as String),
      helpLinks: pulumi.Input.fromValue(pulumi.Input.decodeList<LinkResponseVmmigrationV1alpha1>(map['helpLinks']!, (value) => LinkResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      warningMessage: pulumi.Input.fromValue(LocalizedMessageResponseVmmigrationV1alpha1.fromMap((map['warningMessage']! as Map).cast<String, dynamic>())),
      warningTime: pulumi.Input.fromValue(map['warningTime'] as String),
    );
  }
}

