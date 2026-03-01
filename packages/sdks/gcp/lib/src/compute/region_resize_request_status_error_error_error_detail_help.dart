// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error_error_error_detail_help_link.dart';

class RegionResizeRequestStatusErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink>? links;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailHelp].
  /// [links] (Output)
  RegionResizeRequestStatusErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': ?links == null ? null : pulumi.Input.encodeList<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink, Map<String, dynamic>>(links!, (value) => value.toMap()),
    };
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailHelp(
      links: map['links'] == null ? null : pulumi.Input.decodeList<RegionResizeRequestStatusErrorErrorErrorDetailHelpLink>(map['links'], (value) => RegionResizeRequestStatusErrorErrorErrorDetailHelpLink.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

