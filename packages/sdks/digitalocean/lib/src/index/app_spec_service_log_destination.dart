// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_service_log_destination_datadog.dart';
import 'app_spec_service_log_destination_logtail.dart';
import 'app_spec_service_log_destination_open_search.dart';
import 'app_spec_service_log_destination_papertrail.dart';

class AppSpecServiceLogDestination {
  /// Datadog configuration.
  final pulumi.Input<AppSpecServiceLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<AppSpecServiceLogDestinationLogtail>? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<AppSpecServiceLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<AppSpecServiceLogDestinationPapertrail>? papertrail;

  /// Creates a new [AppSpecServiceLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecServiceLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory AppSpecServiceLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestination(
      datadog: map['datadog'] == null ? null : (AppSpecServiceLogDestinationDatadog.fromMap((map['datadog']! as Map).cast<String, dynamic>())).input(),
      logtail: map['logtail'] == null ? null : (AppSpecServiceLogDestinationLogtail.fromMap((map['logtail']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      openSearch: map['openSearch'] == null ? null : (AppSpecServiceLogDestinationOpenSearch.fromMap((map['openSearch']! as Map).cast<String, dynamic>())).input(),
      papertrail: map['papertrail'] == null ? null : (AppSpecServiceLogDestinationPapertrail.fromMap((map['papertrail']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

