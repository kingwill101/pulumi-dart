// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';

/// Wraps the Header object.
class HeaderOverrideResponse {
  /// header embodying a key and a value.
  final pulumi.Input<HeaderResponse> header;

  /// Creates a new [HeaderOverrideResponse].
  /// [header] header embodying a key and a value.
  const HeaderOverrideResponse({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': pulumi.Input.mapInputValue<HeaderResponse, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory HeaderOverrideResponse.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideResponse(
      header: pulumi.Input.fromValue(HeaderResponse.fromMap((map['header']! as Map).cast<String, dynamic>())),
    );
  }
}

