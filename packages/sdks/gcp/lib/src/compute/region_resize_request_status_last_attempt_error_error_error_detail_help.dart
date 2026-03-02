// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error_error_error_detail_help_link.dart';

class RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>>? links;

  /// Creates a new [RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp].
  /// [links] (Output)
  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp(
      links: map['links'] == null ? null : (pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>(map['links']!, (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

