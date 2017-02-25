import { combineReducers } from 'redux';
import { reducer as form } from 'redux-form';
import session from './session';
import rooms from './rooms';

const appReducer = combineReducers({
  form,
  session,
  rooms,
});

export default function (state, action) {
  if (action.type === 'LOGOUT') {
    return appReducer(undefined, action);
  }
  return appReducer(state, action);
}
