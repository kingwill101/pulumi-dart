// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_header_action_request_headers_to_add.dart';
import 'region_url_map_path_matcher_header_action_response_headers_to_add.dart';

class RegionUrlMapPathMatcherHeaderAction {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd>?>? requestHeadersToAdds;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final pulumi.Input<List<String>?>? requestHeadersToRemoves;
  /// Headers to add the response before sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd>?>? responseHeadersToAdds;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final pulumi.Input<List<String>?>? responseHeadersToRemoves;

  /// Creates a new [RegionUrlMapPathMatcherHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdds] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  const RegionUrlMapPathMatcherHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd>, List<Map<String, dynamic>>>(responseHeadersToAdds, (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory RegionUrlMapPathMatcherHeaderAction.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherHeaderAction(
      requestHeadersToAdds: (() { final guardedValue = map['requestHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd>(guardedValue, (value) => RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeadersToRemoves: (() { final guardedValue = map['requestHeadersToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      responseHeadersToAdds: (() { final guardedValue = map['responseHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd>(guardedValue, (value) => RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeadersToRemoves: (() { final guardedValue = map['responseHeadersToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
