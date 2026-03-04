// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_custom_domain_status_required_dns_update_discovered_check_error.dart';
import 'app_hosting_domain_custom_domain_status_required_dns_update_discovered_record.dart';

class AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered {
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<
    List<
      AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError
    >
  >?
  checkErrors;

  /// (Output)
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  final pulumi.Input<String>? domainName;

  /// (Output)
  /// Records on the domain.
  /// Structure is documented below.
  final pulumi.Input<
    List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord>
  >?
  records;

  /// Creates a new [AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered].
  /// [checkErrors] (Output)
  /// [domainName] (Output)
  /// [records] (Output)
  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered({
    this.checkErrors,
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkErrors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError
            >,
            List<Map<String, dynamic>>
          >(
            checkErrors,
            (value) =>
                pulumi.Input.encodeList<
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'domainName': ?domainName,
      'records':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord
            >,
            List<Map<String, dynamic>>
          >(
            records,
            (value) =>
                pulumi.Input.encodeList<
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscovered(
      checkErrors: (() {
        final guardedValue = map['checkErrors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError
          >(
            guardedValue,
            (value) =>
                AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      records: (() {
        final guardedValue = map['records'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord
          >(
            guardedValue,
            (value) =>
                AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
