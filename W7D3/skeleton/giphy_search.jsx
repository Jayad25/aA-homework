import React from 'react';
import ReactDOM from 'react-dom';
import {configureStore} from './store/store';
// import Root from './components/root';
import { fetchSearchGiphys,receiveSearchGiphys } from './util/api_util.js';

window.fetchSearchGiphys=fetchSearchGiphys

document.addEventListener('DOMContentLoaded', () => {
	const store = configureStore();
  window.store = store;
	// const root = document.getElementById('root');
	// ReactDOM.render(<Root />, root);
});
