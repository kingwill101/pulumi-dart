// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_origin_origin_override_action_header_action_request_headers_to_add.dart';

class EdgeCacheOriginOriginOverrideActionHeaderAction {
  /// Describes a header to add.
  /// You may add a maximum of 25 request headers.
  /// Structure is documented below.
  final pulumi.Input<
    List<EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd>
  >?
  requestHeadersToAdds;

  /// Creates a new [EdgeCacheOriginOriginOverrideActionHeaderAction].
  /// [requestHeadersToAdds] Describes a header to add.
  EdgeCacheOriginOriginOverrideActionHeaderAction({this.requestHeadersToAdds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd
            >,
            List<Map<String, dynamic>>
          >(
            requestHeadersToAdds,
            (value) =>
                pulumi.Input.encodeList<
                  EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EdgeCacheOriginOriginOverrideActionHeaderAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheOriginOriginOverrideActionHeaderAction(
      requestHeadersToAdds: (() {
        final guardedValue = map['requestHeadersToAdds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd
          >(
            guardedValue,
            (value) =>
                EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
