import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';

export const fetchGreetings = createAsyncThunk('message/fetch', async () => {
  const response = await fetch('/api/v1/messages');
  const data = await response.json();
  //const message = data.message;
  console.log(data)
  //return message;
});

const initialState = { loading: false, greeting: '', error: '' };

const greetingSlice = createSlice({
  name: 'greeting',
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder.addCase(fetchGreetings.pending, (state) => {
      const newState = { ...state, loading: true };
      return newState;
    });
    builder.addCase(fetchGreetings.fulfilled, (state, action) => {
      const newState = { ...state, greeting: action.payload, loading: false };
      return newState;
    });
    builder.addCase(fetchGreetings.rejected, (state, action) => {
      const newState = { ...state, greeting: '', error: action.error.message };
      return newState;
    });
  },
});

export default greetingSlice.reducer;
