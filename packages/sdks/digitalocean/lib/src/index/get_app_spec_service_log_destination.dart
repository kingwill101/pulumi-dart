// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_log_destination_datadog.dart';
import 'get_app_spec_service_log_destination_logtail.dart';
import 'get_app_spec_service_log_destination_open_search.dart';
import 'get_app_spec_service_log_destination_papertrail.dart';

class GetAppSpecServiceLogDestination {
  /// Datadog configuration.
  final pulumi.Input<GetAppSpecServiceLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<GetAppSpecServiceLogDestinationLogtail>? logtail;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<GetAppSpecServiceLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<GetAppSpecServiceLogDestinationPapertrail>? papertrail;

  /// Creates a new [GetAppSpecServiceLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  GetAppSpecServiceLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<GetAppSpecServiceLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecServiceLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<GetAppSpecServiceLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecServiceLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory GetAppSpecServiceLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestination(
      datadog: map['datadog'] == null ? null : (GetAppSpecServiceLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>())).input(),
      logtail: map['logtail'] == null ? null : (GetAppSpecServiceLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      openSearch: map['openSearch'] == null ? null : (GetAppSpecServiceLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>())).input(),
      papertrail: map['papertrail'] == null ? null : (GetAppSpecServiceLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

