package Service;

import Controller.EditAccount;
import Modal.Account;

public class ProfileService {
    EditAccount editAccount = new EditAccount();
    public boolean EditProfile(Account account){
        return editAccount.edit(account);
    }
}
