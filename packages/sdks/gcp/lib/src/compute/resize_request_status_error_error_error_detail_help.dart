// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error_error_error_detail_help_link.dart';

class ResizeRequestStatusErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorErrorErrorDetailHelpLink>>? links;

  /// Creates a new [ResizeRequestStatusErrorErrorErrorDetailHelp].
  /// [links] (Output)
  const ResizeRequestStatusErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorErrorErrorDetailHelpLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorErrorErrorDetailHelpLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusErrorErrorErrorDetailHelp(
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailHelpLink>(guardedValue, (value) => ResizeRequestStatusErrorErrorErrorDetailHelpLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
