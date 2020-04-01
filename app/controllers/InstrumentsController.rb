class InstrumentsController < ApplicationController
    get '/instruments/:id' do
        @instrument = Instrument.find(params[:id])
        erb :'instruments/show'
    end

    get '/instruments' do
        @instruments = Instrument.all
        erb :'instruments/index'
    end
end