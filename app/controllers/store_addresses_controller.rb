class StoreAddressesController < ApplicationController
  # GET /store_addresses
  # GET /store_addresses.xml
  def index
    @store_addresses = StoreAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @store_addresses }
    end
  end

  # GET /store_addresses/1
  # GET /store_addresses/1.xml
  def show
    @store_address = StoreAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @store_address }
    end
  end

  # GET /store_addresses/new
  # GET /store_addresses/new.xml
  def new
    @store_address = StoreAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @store_address }
    end
  end

  # GET /store_addresses/1/edit
  def edit
    @store_address = StoreAddress.find(params[:id])
  end

  # POST /store_addresses
  # POST /store_addresses.xml
  def create
    @store_address = StoreAddress.new(params[:store_address])

    respond_to do |format|
      if @store_address.save
        format.html { redirect_to(@store_address, :notice => 'Store address was successfully created.') }
        format.xml  { render :xml => @store_address, :status => :created, :location => @store_address }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @store_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /store_addresses/1
  # PUT /store_addresses/1.xml
  def update
    @store_address = StoreAddress.find(params[:id])

    respond_to do |format|
      if @store_address.update_attributes(params[:store_address])
        format.html { redirect_to(@store_address, :notice => 'Store address was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @store_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /store_addresses/1
  # DELETE /store_addresses/1.xml
  def destroy
    @store_address = StoreAddress.find(params[:id])
    @store_address.destroy

    respond_to do |format|
      format.html { redirect_to(store_addresses_url) }
      format.xml  { head :ok }
    end
  end
end
