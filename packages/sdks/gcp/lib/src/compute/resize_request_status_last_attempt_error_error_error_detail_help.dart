// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error_error_error_detail_help_link.dart';

class ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>>? links;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp].
  /// [links] (Output)
  const ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp(
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>(guardedValue, (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
