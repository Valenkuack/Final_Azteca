class UpdateUsers < ActiveRecord::Migration
  def change
    @u = User.find_by( email: 'valmin@mex.ie' )
    # if there is no user with the email valmin@mex.ie
    # in the users table the above find_by() method will return nil
    # nil shows there is no record in the table with that email
      if @u != nil
       @u.update_attribute :admin, true
      end
  end
end