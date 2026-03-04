// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error_error.dart';

class RegionResizeRequestStatusError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusErrorError>>? errors;

  /// Creates a new [RegionResizeRequestStatusError].
  /// [errors] (Output)
  RegionResizeRequestStatusError({this.errors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionResizeRequestStatusErrorError>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeList<
                  RegionResizeRequestStatusErrorError,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RegionResizeRequestStatusError.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusError(
      errors: (() {
        final guardedValue = map['errors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegionResizeRequestStatusErrorError>(
            guardedValue,
            (value) => RegionResizeRequestStatusErrorError.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
