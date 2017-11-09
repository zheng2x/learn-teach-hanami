module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries
    expose :sort #not really necessary anymore

    def call(params)
      sort = params[:sort]
      
      # @entries = EntryRepository.new.all
      @entries = EntryRepository.new.most_recent
      @sort = sort
      # @sort = params[:sort] will be also fine
      
      # most_recent of least_recent
      if @sort == 'most_recent'
        @entries = EntryRepository.new.least_recent
    end
  end
end
