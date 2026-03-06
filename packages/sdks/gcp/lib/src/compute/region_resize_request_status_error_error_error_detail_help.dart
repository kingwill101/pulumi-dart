// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error_error_error_detail_help_link.dart';

class RegionResizeRequestStatusErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink>>? links;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailHelp].
  /// [links] (Output)
  const RegionResizeRequestStatusErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailHelp(
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink>(guardedValue, (value) => RegionResizeRequestStatusErrorErrorErrorDetailHelpLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

