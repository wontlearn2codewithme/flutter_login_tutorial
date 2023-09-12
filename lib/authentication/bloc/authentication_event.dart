part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  final AuthenticationStatus status;
  const AuthenticationEvent(this.status);

  @override
  List<Object> get props => [status];
}

final class _AuthenticationStatusChanged extends AuthenticationEvent {
  const _AuthenticationStatusChanged(super.status);
}

final class AuthenticationLogoutRequested extends AuthenticationEvent {
  AuthenticationLogoutRequested(super.status);
}
