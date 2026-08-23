// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'holder.dart';
import 'int_enum.dart';
import 'number_enum.dart';
import 'string_enum.dart';
import 'wordy_enum.dart';

/// {@template pulumi_index_deluxe_args_doc}
/// The set of arguments for Deluxe.
/// {@endtemplate}
/// {@macro pulumi_index_deluxe_args_doc}
class DeluxeArgs {
  final pulumi.Input<List<StringEnum>?>? arrayOfEnum;
  final pulumi.Input<Holder?>? holder;
  final pulumi.Input<Map<String, IntEnum>?>? mapOfEnum;
  final pulumi.Input<NumberEnum?>? numberEnum;
  final pulumi.Input<dynamic>? unionEnum;
  final pulumi.Input<WordyEnum?>? wordyEnum;

  /// Creates a new [DeluxeArgs].
  /// [arrayOfEnum] Optional.
  /// [holder] Optional.
  /// [mapOfEnum] Optional.
  /// [numberEnum] Optional.
  /// [unionEnum] Optional.
  /// [wordyEnum] Optional.
  const DeluxeArgs({
    this.arrayOfEnum,
    this.holder,
    this.mapOfEnum,
    this.numberEnum,
    this.unionEnum,
    this.wordyEnum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayOfEnum': ?pulumi.Input.mapOptionalInputValue<List<StringEnum>, List<String>>(arrayOfEnum, (value) => pulumi.Input.encodeList<StringEnum, String>(value, (value) => value.wireValue)),
      'holder': ?pulumi.Input.mapOptionalInputValue<Holder, Map<String, dynamic>>(holder, (value) => value.toMap()),
      'mapOfEnum': ?pulumi.Input.mapOptionalInputValue<Map<String, IntEnum>, Map<String, int>>(mapOfEnum, (value) => pulumi.Input.encodeMapValues<IntEnum, int>(value, (value) => value.wireValue)),
      'numberEnum': ?pulumi.Input.mapOptionalInputValue<NumberEnum, double>(numberEnum, (value) => value.wireValue),
      'unionEnum': ?unionEnum,
      'wordyEnum': ?pulumi.Input.mapOptionalInputValue<WordyEnum, String>(wordyEnum, (value) => value.wireValue),
    };
  }

  factory DeluxeArgs.fromMap(Map<String, dynamic> map) {
    return DeluxeArgs(
      arrayOfEnum: (() { final guardedValue = map['arrayOfEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StringEnum>(guardedValue, (value) => StringEnum.fromValue(value as String))); })(),
      holder: (() { final guardedValue = map['holder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Holder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mapOfEnum: (() { final guardedValue = map['mapOfEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<IntEnum>(guardedValue, (value) => IntEnum.fromValue(value as int))); })(),
      numberEnum: (() { final guardedValue = map['numberEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NumberEnum.fromValue(guardedValue as double)); })(),
      unionEnum: (() { final guardedValue = map['unionEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      wordyEnum: (() { final guardedValue = map['wordyEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WordyEnum.fromValue(guardedValue as String)); })(),
    );
  }
}
