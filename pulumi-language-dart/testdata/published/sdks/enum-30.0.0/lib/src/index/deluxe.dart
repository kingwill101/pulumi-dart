import 'package:pulumi/pulumi.dart' as pulumi;
import 'deluxe_args.dart';
import 'holder.dart';
import 'int_enum.dart';
import 'number_enum.dart';
import 'string_enum.dart';
import 'wordy_enum.dart';

class Deluxe extends pulumi.CustomResource {
  late final pulumi.Output<List<StringEnum>?> arrayOfEnum;
  late final pulumi.Output<Holder?> holder;
  late final pulumi.Output<Map<String, IntEnum>?> mapOfEnum;
  late final pulumi.Output<NumberEnum?> numberEnum;
  late final pulumi.Output<dynamic> unionEnum;
  late final pulumi.Output<WordyEnum?> wordyEnum;

  /// Creates a new [Deluxe].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Deluxe]. {@macro pulumi_index_deluxe_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Deluxe(
    String name, {
    DeluxeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'enum:index:Deluxe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '30.0.0').merge(options),
        ) {
    arrayOfEnum = registerOutput<List<StringEnum>?>('arrayOfEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StringEnum>(guardedValue, (value) => StringEnum.fromValue(value as String)); });
    holder = registerOutput<Holder?>('holder', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Holder.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mapOfEnum = registerOutput<Map<String, IntEnum>?>('mapOfEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<IntEnum>(guardedValue, (value) => IntEnum.fromValue(value as int)); });
    numberEnum = registerOutput<NumberEnum?>('numberEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NumberEnum.fromValue(guardedValue as double); });
    unionEnum = registerOutput<dynamic>('unionEnum');
    wordyEnum = registerOutput<WordyEnum?>('wordyEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WordyEnum.fromValue(guardedValue as String); });
  }
}
