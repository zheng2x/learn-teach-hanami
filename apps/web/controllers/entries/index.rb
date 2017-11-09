module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries
    expose :sort

    def call(params)
      sort = params[:sort]
      
      # @entries = EntryRepository.new.all
      @entries = EntryRepository.new.most_recent
      @sort = sort
      # @sort = params[:sort] will be also fine
    end
  end
end
