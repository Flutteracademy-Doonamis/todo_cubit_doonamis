// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtered_todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilteredTodosState {
  List<Todo> get filteredTodos => throw _privateConstructorUsedError;
  List<Todo> get favTodos => throw _privateConstructorUsedError;
  bool get newVale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilteredTodosStateCopyWith<FilteredTodosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredTodosStateCopyWith<$Res> {
  factory $FilteredTodosStateCopyWith(
          FilteredTodosState value, $Res Function(FilteredTodosState) then) =
      _$FilteredTodosStateCopyWithImpl<$Res, FilteredTodosState>;
  @useResult
  $Res call({List<Todo> filteredTodos, List<Todo> favTodos, bool newVale});
}

/// @nodoc
class _$FilteredTodosStateCopyWithImpl<$Res, $Val extends FilteredTodosState>
    implements $FilteredTodosStateCopyWith<$Res> {
  _$FilteredTodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredTodos = null,
    Object? favTodos = null,
    Object? newVale = null,
  }) {
    return _then(_value.copyWith(
      filteredTodos: null == filteredTodos
          ? _value.filteredTodos
          : filteredTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      favTodos: null == favTodos
          ? _value.favTodos
          : favTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      newVale: null == newVale
          ? _value.newVale
          : newVale // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilteredTodosStateCopyWith<$Res>
    implements $FilteredTodosStateCopyWith<$Res> {
  factory _$$_FilteredTodosStateCopyWith(_$_FilteredTodosState value,
          $Res Function(_$_FilteredTodosState) then) =
      __$$_FilteredTodosStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> filteredTodos, List<Todo> favTodos, bool newVale});
}

/// @nodoc
class __$$_FilteredTodosStateCopyWithImpl<$Res>
    extends _$FilteredTodosStateCopyWithImpl<$Res, _$_FilteredTodosState>
    implements _$$_FilteredTodosStateCopyWith<$Res> {
  __$$_FilteredTodosStateCopyWithImpl(
      _$_FilteredTodosState _value, $Res Function(_$_FilteredTodosState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredTodos = null,
    Object? favTodos = null,
    Object? newVale = null,
  }) {
    return _then(_$_FilteredTodosState(
      filteredTodos: null == filteredTodos
          ? _value._filteredTodos
          : filteredTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      favTodos: null == favTodos
          ? _value._favTodos
          : favTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      newVale: null == newVale
          ? _value.newVale
          : newVale // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FilteredTodosState implements _FilteredTodosState {
  const _$_FilteredTodosState(
      {final List<Todo> filteredTodos = const [],
      final List<Todo> favTodos = const [],
      this.newVale = false})
      : _filteredTodos = filteredTodos,
        _favTodos = favTodos;

  final List<Todo> _filteredTodos;
  @override
  @JsonKey()
  List<Todo> get filteredTodos {
    if (_filteredTodos is EqualUnmodifiableListView) return _filteredTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTodos);
  }

  final List<Todo> _favTodos;
  @override
  @JsonKey()
  List<Todo> get favTodos {
    if (_favTodos is EqualUnmodifiableListView) return _favTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favTodos);
  }

  @override
  @JsonKey()
  final bool newVale;

  @override
  String toString() {
    return 'FilteredTodosState(filteredTodos: $filteredTodos, favTodos: $favTodos, newVale: $newVale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilteredTodosState &&
            const DeepCollectionEquality()
                .equals(other._filteredTodos, _filteredTodos) &&
            const DeepCollectionEquality().equals(other._favTodos, _favTodos) &&
            (identical(other.newVale, newVale) || other.newVale == newVale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filteredTodos),
      const DeepCollectionEquality().hash(_favTodos),
      newVale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilteredTodosStateCopyWith<_$_FilteredTodosState> get copyWith =>
      __$$_FilteredTodosStateCopyWithImpl<_$_FilteredTodosState>(
          this, _$identity);
}

abstract class _FilteredTodosState implements FilteredTodosState {
  const factory _FilteredTodosState(
      {final List<Todo> filteredTodos,
      final List<Todo> favTodos,
      final bool newVale}) = _$_FilteredTodosState;

  @override
  List<Todo> get filteredTodos;
  @override
  List<Todo> get favTodos;
  @override
  bool get newVale;
  @override
  @JsonKey(ignore: true)
  _$$_FilteredTodosStateCopyWith<_$_FilteredTodosState> get copyWith =>
      throw _privateConstructorUsedError;
}
