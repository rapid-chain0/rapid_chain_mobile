// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterViewModel on _RegisterViewModelBase, Store {
  late final _$attempIndexAtom =
      Atom(name: '_RegisterViewModelBase.attempIndex', context: context);

  @override
  int get attempIndex {
    _$attempIndexAtom.reportRead();
    return super.attempIndex;
  }

  @override
  set attempIndex(int value) {
    _$attempIndexAtom.reportWrite(value, super.attempIndex, () {
      super.attempIndex = value;
    });
  }

  late final _$_RegisterViewModelBaseActionController =
      ActionController(name: '_RegisterViewModelBase', context: context);

  @override
  void nextAttemp() {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.nextAttemp');
    try {
      return super.nextAttemp();
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void backAttemp() {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.backAttemp');
    try {
      return super.backAttemp();
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
attempIndex: ${attempIndex}
    ''';
  }
}
