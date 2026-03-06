// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDataSourceLogFileSettingText {
  /// The timestamp format of the text log files. Possible values are `ISO 8601`, `YYYY-MM-DD HH:MM:SS`, `M/D/YYYY HH:MM:SS AM/PM`, `Mon DD, YYYY HH:MM:SS`, `yyMMdd HH:mm:ss`, `ddMMyy HH:mm:ss`, `MMM d hh:mm:ss`, `dd/MMM/yyyy:HH:mm:ss zzz`,and `yyyy-MM-ddTHH:mm:ssK`.
  final pulumi.Input<String> recordStartTimestampFormat;

  /// Creates a new [GetDataCollectionRuleDataSourceLogFileSettingText].
  /// [recordStartTimestampFormat] The timestamp format of the text log files. Possible values are `ISO 8601`, `YYYY-MM-DD HH:MM:SS`, `M/D/YYYY HH:MM:SS AM/PM`, `Mon DD, YYYY HH:MM:SS`, `yyMMdd HH:mm:ss`, `ddMMyy HH:mm:ss`, `MMM d hh:mm:ss`, `dd/MMM/yyyy:HH:mm:ss zzz`,and `yyyy-MM-ddTHH:mm:ssK`.
  const GetDataCollectionRuleDataSourceLogFileSettingText({
    required this.recordStartTimestampFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordStartTimestampFormat': recordStartTimestampFormat,
    };
  }

  factory GetDataCollectionRuleDataSourceLogFileSettingText.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceLogFileSettingText(
      recordStartTimestampFormat: pulumi.Input.fromValue(map['recordStartTimestampFormat'] as String),
    );
  }
}

